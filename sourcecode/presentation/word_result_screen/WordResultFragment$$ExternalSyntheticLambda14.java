package fast.dic.dict.presentation.word_result_screen;

import android.view.View;
import fast.dic.dict.utils.AnyDebounce;
import kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class WordResultFragment$$ExternalSyntheticLambda14 implements View.OnScrollChangeListener {
    public /* synthetic */ WordResultFragment$$ExternalSyntheticLambda14() {
    }

    @Override // android.view.View.OnScrollChangeListener
    public final void onScrollChange(View view, int i, int i2, int i3, int i4) {
        AnyDebounce.INSTANCE.debounce(Integer.valueOf(i2 - i4), 50L, new Function1
        /*  JADX ERROR: Method code generation error
            jadx.core.utils.exceptions.CodegenException: Error generate insn: 0x0002: INVOKE 
              (wrap fast.dic.dict.utils.AnyDebounce:0x0001: SGET  A[WRAPPED] (LINE:148) fast.dic.dict.utils.AnyDebounce.INSTANCE fast.dic.dict.utils.AnyDebounce)
              (wrap java.lang.Integer:0x0003: INVOKE (wrap int:0x0000: ARITH (r3v0 'i2' int) - (r5v0 'i4' int) A[WRAPPED]) STATIC call: java.lang.Integer.valueOf(int):java.lang.Integer A[MD:(int):java.lang.Integer (c), WRAPPED])
              (50 long)
              (wrap kotlin.jvm.functions.Function1:0x0009: CONSTRUCTOR 
              (wrap fast.dic.dict.activities.MainActivity:0x0000: IGET 
              (r0v0 'this' fast.dic.dict.presentation.word_result_screen.WordResultFragment$$ExternalSyntheticLambda14 A[IMMUTABLE_TYPE, THIS])
             A[WRAPPED] fast.dic.dict.presentation.word_result_screen.WordResultFragment$$ExternalSyntheticLambda14.f$0 fast.dic.dict.activities.MainActivity)
             A[MD:(fast.dic.dict.activities.MainActivity):void (m), WRAPPED] call: fast.dic.dict.presentation.word_result_screen.WordResultFragment$$ExternalSyntheticLambda3.<init>(fast.dic.dict.activities.MainActivity):void type: CONSTRUCTOR)
             VIRTUAL call: fast.dic.dict.utils.AnyDebounce.debounce(java.lang.Object, long, kotlin.jvm.functions.Function1):void A[MD:<T>:(T, long, kotlin.jvm.functions.Function1<? super T, kotlin.Unit>):void (m)] (LINE:148) in method: fast.dic.dict.presentation.word_result_screen.WordResultFragment$$ExternalSyntheticLambda14.onScrollChange(android.view.View, int, int, int, int):void, file: classes11.dex
            	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:310)
            	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:273)
            	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:94)
            	at jadx.core.dex.nodes.IBlock.generate(IBlock.java:15)
            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
            	at jadx.core.dex.regions.Region.generate(Region.java:35)
            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
            	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:291)
            	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:270)
            	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:420)
            	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:345)
            	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$2(ClassGen.java:299)
            	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(Unknown Source)
            	at java.base/java.util.ArrayList.forEach(Unknown Source)
            	at java.base/java.util.stream.SortedOps$RefSortingSink.end(Unknown Source)
            	at java.base/java.util.stream.Sink$ChainedReference.end(Unknown Source)
            	at java.base/java.util.stream.ReferencePipeline$7$1FlatMap.end(Unknown Source)
            	at java.base/java.util.stream.AbstractPipeline.copyInto(Unknown Source)
            	at java.base/java.util.stream.AbstractPipeline.wrapAndCopyInto(Unknown Source)
            	at java.base/java.util.stream.ForEachOps$ForEachOp.evaluateSequential(Unknown Source)
            	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.evaluateSequential(Unknown Source)
            	at java.base/java.util.stream.AbstractPipeline.evaluate(Unknown Source)
            	at java.base/java.util.stream.ReferencePipeline.forEach(Unknown Source)
            	at jadx.core.codegen.ClassGen.addInnerClsAndMethods(ClassGen.java:295)
            	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:284)
            	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:268)
            	at jadx.core.codegen.ClassGen.addClassCode(ClassGen.java:160)
            	at jadx.core.codegen.ClassGen.makeClass(ClassGen.java:104)
            	at jadx.core.codegen.CodeGen.wrapCodeGen(CodeGen.java:45)
            	at jadx.core.codegen.CodeGen.generateJavaCode(CodeGen.java:34)
            	at jadx.core.codegen.CodeGen.generate(CodeGen.java:22)
            	at jadx.core.ProcessClass.process(ProcessClass.java:89)
            	at jadx.core.ProcessClass.generateCode(ProcessClass.java:127)
            	at jadx.core.dex.nodes.ClassNode.generateClassCode(ClassNode.java:405)
            	at jadx.core.dex.nodes.ClassNode.decompile(ClassNode.java:393)
            	at jadx.core.dex.nodes.ClassNode.decompile(ClassNode.java:311)
            Caused by: jadx.core.utils.exceptions.JadxRuntimeException: Method arg registers not loaded: fast.dic.dict.presentation.word_result_screen.WordResultFragment$$ExternalSyntheticLambda3.<init>(fast.dic.dict.activities.MainActivity):void, class status: GENERATED_AND_UNLOADED
            	at jadx.core.dex.nodes.MethodNode.getArgRegs(MethodNode.java:309)
            	at jadx.core.codegen.InsnGen.inlineAnonymousConstructor(InsnGen.java:829)
            	at jadx.core.codegen.InsnGen.makeConstructor(InsnGen.java:730)
            	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:418)
            	at jadx.core.codegen.InsnGen.addWrappedArg(InsnGen.java:145)
            	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:121)
            	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:108)
            	at jadx.core.codegen.InsnGen.generateMethodArguments(InsnGen.java:1143)
            	at jadx.core.codegen.InsnGen.makeInvoke(InsnGen.java:910)
            	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:422)
            	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:303)
            	... 35 more
            */
        /*
            this = this;
            fast.dic.dict.activities.MainActivity r0 = r1
            fast.dic.dict.presentation.word_result_screen.WordResultFragment.onCreateView$lambda$1(r0, r1, r2, r3, r4, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: fast.dic.dict.presentation.word_result_screen.WordResultFragment$$ExternalSyntheticLambda14.onScrollChange(android.view.View, int, int, int, int):void");
    }
}
