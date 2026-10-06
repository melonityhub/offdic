package fast.dic.dict.presentation.profile_screen;

import com.parse.ParseObject;
import fast.dic.dict.services.parse.FDPurchased;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ProfileViewModal.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\b\u0004\u0005\u0006\u0007\b\t\n\u000bB\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\b\f\r\u000e\u000f\u0010\u0011\u0012\u0013¨\u0006\u0014"}, d2 = {"Lfast/dic/dict/presentation/profile_screen/ProfileUIState;", "", "<init>", "()V", "Loading", "DeletedAccount", "DeletedAccountError", "ResetPasswordRequested", "ResetPasswordFailed", "NoInternetError", "User", "Error", "Lfast/dic/dict/presentation/profile_screen/ProfileUIState$DeletedAccount;", "Lfast/dic/dict/presentation/profile_screen/ProfileUIState$DeletedAccountError;", "Lfast/dic/dict/presentation/profile_screen/ProfileUIState$Error;", "Lfast/dic/dict/presentation/profile_screen/ProfileUIState$Loading;", "Lfast/dic/dict/presentation/profile_screen/ProfileUIState$NoInternetError;", "Lfast/dic/dict/presentation/profile_screen/ProfileUIState$ResetPasswordFailed;", "Lfast/dic/dict/presentation/profile_screen/ProfileUIState$ResetPasswordRequested;", "Lfast/dic/dict/presentation/profile_screen/ProfileUIState$User;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public abstract class ProfileUIState {
    public /* synthetic */ ProfileUIState(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX INFO: compiled from: ProfileViewModal.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÖ\u0083\u0004J\n\u0010\b\u001a\u00020\tHÖ\u0081\u0004J\n\u0010\n\u001a\u00020\u000bHÖ\u0081\u0004¨\u0006\f"}, d2 = {"Lfast/dic/dict/presentation/profile_screen/ProfileUIState$Loading;", "Lfast/dic/dict/presentation/profile_screen/ProfileUIState;", "<init>", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final /* data */ class Loading extends ProfileUIState {
        public static final Loading INSTANCE = new Loading();

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Loading)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return -493195536;
        }

        public String toString() {
            return "Loading";
        }

        private Loading() {
            super(null);
        }
    }

    private ProfileUIState() {
    }

    /* JADX INFO: compiled from: ProfileViewModal.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000b\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0015\u0010\t\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0083\u0004J\n\u0010\u000e\u001a\u00020\u000fHÖ\u0081\u0004J\n\u0010\u0010\u001a\u00020\u0003HÖ\u0081\u0004R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lfast/dic/dict/presentation/profile_screen/ProfileUIState$DeletedAccount;", "Lfast/dic/dict/presentation/profile_screen/ProfileUIState;", "message", "", "<init>", "(Ljava/lang/String;)V", "getMessage", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final /* data */ class DeletedAccount extends ProfileUIState {
        private final String message;

        public static /* synthetic */ DeletedAccount copy$default(DeletedAccount deletedAccount, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = deletedAccount.message;
            }
            return deletedAccount.copy(str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getMessage() {
            return this.message;
        }

        public final DeletedAccount copy(String message) {
            return new DeletedAccount(message);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof DeletedAccount) && Intrinsics.areEqual(this.message, ((DeletedAccount) other).message);
        }

        public int hashCode() {
            String str = this.message;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public String toString() {
            return "DeletedAccount(message=" + this.message + ")";
        }

        public DeletedAccount(String str) {
            super(null);
            this.message = str;
        }

        public final String getMessage() {
            return this.message;
        }
    }

    /* JADX INFO: compiled from: ProfileViewModal.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000b\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0015\u0010\t\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0083\u0004J\n\u0010\u000e\u001a\u00020\u000fHÖ\u0081\u0004J\n\u0010\u0010\u001a\u00020\u0003HÖ\u0081\u0004R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lfast/dic/dict/presentation/profile_screen/ProfileUIState$DeletedAccountError;", "Lfast/dic/dict/presentation/profile_screen/ProfileUIState;", "message", "", "<init>", "(Ljava/lang/String;)V", "getMessage", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final /* data */ class DeletedAccountError extends ProfileUIState {
        private final String message;

        public static /* synthetic */ DeletedAccountError copy$default(DeletedAccountError deletedAccountError, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = deletedAccountError.message;
            }
            return deletedAccountError.copy(str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getMessage() {
            return this.message;
        }

        public final DeletedAccountError copy(String message) {
            return new DeletedAccountError(message);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof DeletedAccountError) && Intrinsics.areEqual(this.message, ((DeletedAccountError) other).message);
        }

        public int hashCode() {
            String str = this.message;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public String toString() {
            return "DeletedAccountError(message=" + this.message + ")";
        }

        public DeletedAccountError(String str) {
            super(null);
            this.message = str;
        }

        public final String getMessage() {
            return this.message;
        }
    }

    /* JADX INFO: compiled from: ProfileViewModal.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÖ\u0083\u0004J\n\u0010\b\u001a\u00020\tHÖ\u0081\u0004J\n\u0010\n\u001a\u00020\u000bHÖ\u0081\u0004¨\u0006\f"}, d2 = {"Lfast/dic/dict/presentation/profile_screen/ProfileUIState$ResetPasswordRequested;", "Lfast/dic/dict/presentation/profile_screen/ProfileUIState;", "<init>", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final /* data */ class ResetPasswordRequested extends ProfileUIState {
        public static final ResetPasswordRequested INSTANCE = new ResetPasswordRequested();

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ResetPasswordRequested)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return 1440291152;
        }

        public String toString() {
            return "ResetPasswordRequested";
        }

        private ResetPasswordRequested() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: ProfileViewModal.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u000bJ&\u0010\u000f\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u0010J\u0014\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014HÖ\u0083\u0004J\n\u0010\u0015\u001a\u00020\u0005HÖ\u0081\u0004J\n\u0010\u0016\u001a\u00020\u0003HÖ\u0081\u0004R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\n\u0010\u000b¨\u0006\u0017"}, d2 = {"Lfast/dic/dict/presentation/profile_screen/ProfileUIState$ResetPasswordFailed;", "Lfast/dic/dict/presentation/profile_screen/ProfileUIState;", "message", "", "code", "", "<init>", "(Ljava/lang/String;Ljava/lang/Integer;)V", "getMessage", "()Ljava/lang/String;", "getCode", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "component1", "component2", "copy", "(Ljava/lang/String;Ljava/lang/Integer;)Lfast/dic/dict/presentation/profile_screen/ProfileUIState$ResetPasswordFailed;", "equals", "", "other", "", "hashCode", "toString", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final /* data */ class ResetPasswordFailed extends ProfileUIState {
        private final Integer code;
        private final String message;

        public static /* synthetic */ ResetPasswordFailed copy$default(ResetPasswordFailed resetPasswordFailed, String str, Integer num, int i, Object obj) {
            if ((i & 1) != 0) {
                str = resetPasswordFailed.message;
            }
            if ((i & 2) != 0) {
                num = resetPasswordFailed.code;
            }
            return resetPasswordFailed.copy(str, num);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getMessage() {
            return this.message;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final Integer getCode() {
            return this.code;
        }

        public final ResetPasswordFailed copy(String message, Integer code) {
            return new ResetPasswordFailed(message, code);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ResetPasswordFailed)) {
                return false;
            }
            ResetPasswordFailed resetPasswordFailed = (ResetPasswordFailed) other;
            return Intrinsics.areEqual(this.message, resetPasswordFailed.message) && Intrinsics.areEqual(this.code, resetPasswordFailed.code);
        }

        public int hashCode() {
            String str = this.message;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            Integer num = this.code;
            return iHashCode + (num != null ? num.hashCode() : 0);
        }

        public String toString() {
            return "ResetPasswordFailed(message=" + this.message + ", code=" + this.code + ")";
        }

        public ResetPasswordFailed(String str, Integer num) {
            super(null);
            this.message = str;
            this.code = num;
        }

        public /* synthetic */ ResetPasswordFailed(String str, Integer num, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i & 2) != 0 ? null : num);
        }

        public final Integer getCode() {
            return this.code;
        }

        public final String getMessage() {
            return this.message;
        }
    }

    /* JADX INFO: compiled from: ProfileViewModal.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÖ\u0083\u0004J\n\u0010\b\u001a\u00020\tHÖ\u0081\u0004J\n\u0010\n\u001a\u00020\u000bHÖ\u0081\u0004¨\u0006\f"}, d2 = {"Lfast/dic/dict/presentation/profile_screen/ProfileUIState$NoInternetError;", "Lfast/dic/dict/presentation/profile_screen/ProfileUIState;", "<init>", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final /* data */ class NoInternetError extends ProfileUIState {
        public static final NoInternetError INSTANCE = new NoInternetError();

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof NoInternetError)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return 781015226;
        }

        public String toString() {
            return "NoInternetError";
        }

        private NoInternetError() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: ProfileViewModal.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0014\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0083\u0004J\n\u0010\u0013\u001a\u00020\u0014HÖ\u0081\u0004J\n\u0010\u0015\u001a\u00020\u0016HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0017"}, d2 = {"Lfast/dic/dict/presentation/profile_screen/ProfileUIState$User;", "Lfast/dic/dict/presentation/profile_screen/ProfileUIState;", "parseObject", "Lcom/parse/ParseObject;", "fdPurchased", "Lfast/dic/dict/services/parse/FDPurchased;", "<init>", "(Lcom/parse/ParseObject;Lfast/dic/dict/services/parse/FDPurchased;)V", "getParseObject", "()Lcom/parse/ParseObject;", "getFdPurchased", "()Lfast/dic/dict/services/parse/FDPurchased;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final /* data */ class User extends ProfileUIState {
        private final FDPurchased fdPurchased;
        private final ParseObject parseObject;

        public static /* synthetic */ User copy$default(User user, ParseObject parseObject, FDPurchased fDPurchased, int i, Object obj) {
            if ((i & 1) != 0) {
                parseObject = user.parseObject;
            }
            if ((i & 2) != 0) {
                fDPurchased = user.fdPurchased;
            }
            return user.copy(parseObject, fDPurchased);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final ParseObject getParseObject() {
            return this.parseObject;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final FDPurchased getFdPurchased() {
            return this.fdPurchased;
        }

        public final User copy(ParseObject parseObject, FDPurchased fdPurchased) {
            Intrinsics.checkNotNullParameter(parseObject, "parseObject");
            Intrinsics.checkNotNullParameter(fdPurchased, "fdPurchased");
            return new User(parseObject, fdPurchased);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof User)) {
                return false;
            }
            User user = (User) other;
            return Intrinsics.areEqual(this.parseObject, user.parseObject) && Intrinsics.areEqual(this.fdPurchased, user.fdPurchased);
        }

        public int hashCode() {
            return (this.parseObject.hashCode() * 31) + this.fdPurchased.hashCode();
        }

        public String toString() {
            return "User(parseObject=" + this.parseObject + ", fdPurchased=" + this.fdPurchased + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public User(ParseObject parseObject, FDPurchased fdPurchased) {
            super(null);
            Intrinsics.checkNotNullParameter(parseObject, "parseObject");
            Intrinsics.checkNotNullParameter(fdPurchased, "fdPurchased");
            this.parseObject = parseObject;
            this.fdPurchased = fdPurchased;
        }

        public final FDPurchased getFdPurchased() {
            return this.fdPurchased;
        }

        public final ParseObject getParseObject() {
            return this.parseObject;
        }
    }

    /* JADX INFO: compiled from: ProfileViewModal.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000b\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0015\u0010\t\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0083\u0004J\n\u0010\u000e\u001a\u00020\u000fHÖ\u0081\u0004J\n\u0010\u0010\u001a\u00020\u0003HÖ\u0081\u0004R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lfast/dic/dict/presentation/profile_screen/ProfileUIState$Error;", "Lfast/dic/dict/presentation/profile_screen/ProfileUIState;", "message", "", "<init>", "(Ljava/lang/String;)V", "getMessage", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final /* data */ class Error extends ProfileUIState {
        private final String message;

        public static /* synthetic */ Error copy$default(Error error, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = error.message;
            }
            return error.copy(str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getMessage() {
            return this.message;
        }

        public final Error copy(String message) {
            return new Error(message);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Error) && Intrinsics.areEqual(this.message, ((Error) other).message);
        }

        public int hashCode() {
            String str = this.message;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public String toString() {
            return "Error(message=" + this.message + ")";
        }

        public Error(String str) {
            super(null);
            this.message = str;
        }

        public final String getMessage() {
            return this.message;
        }
    }
}
