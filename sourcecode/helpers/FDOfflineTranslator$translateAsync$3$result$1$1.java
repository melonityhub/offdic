package fast.dic.dict.helpers;

import com.google.mlkit.vision.text.Text;
import fast.dic.dict.utils.FDCategory;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: FDOfflineTranslator.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
@DebugMetadata(c = "fast.dic.dict.helpers.FDOfflineTranslator$translateAsync$3$result$1$1", f = "FDOfflineTranslator.kt", i = {}, l = {172}, m = "invokeSuspend", n = {}, nl = {-1}, s = {}, v = 2)
final class FDOfflineTranslator$translateAsync$3$result$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super String>, Object> {
    final /* synthetic */ FDCategory $category;
    final /* synthetic */ Text.TextBlock $textBlock;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FDOfflineTranslator$translateAsync$3$result$1$1(Text.TextBlock textBlock, FDCategory fDCategory, Continuation<? super FDOfflineTranslator$translateAsync$3$result$1$1> continuation) {
        super(2, continuation);
        this.$textBlock = textBlock;
        this.$category = fDCategory;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new FDOfflineTranslator$translateAsync$3$result$1$1(this.$textBlock, this.$category, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super String> continuation) {
        return ((FDOfflineTranslator$translateAsync$3$result$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i != 0) {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return obj;
        }
        ResultKt.throwOnFailure(obj);
        FDOfflineTranslator fDOfflineTranslator = FDOfflineTranslator.INSTANCE;
        String text = this.$textBlock.getText();
        Intrinsics.checkNotNullExpressionValue(text, "getText(...)");
        FDCategory fDCategory = this.$category;
        String text2 = this.$textBlock.getText();
        Intrinsics.checkNotNullExpressionValue(text2, "getText(...)");
        Integer numFindLanguage = fDCategory.findLanguage(text2);
        Intrinsics.checkNotNull(numFindLanguage);
        this.label = 1;
        Object objTranslate = fDOfflineTranslator.translate(text, numFindLanguage.intValue(), this);
        return objTranslate == coroutine_suspended ? coroutine_suspended : objTranslate;
    }
}
