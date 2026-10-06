package fast.dic.dict;

import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.util.DisplayMetrics;
import android.util.SizeF;
import android.widget.RemoteViews;
import androidx.core.app.NotificationCompat;
import com.yandex.div.core.dagger.Names;
import fast.dic.dict.activities.SplashActivity;
import fast.dic.dict.database.FDDatabaseManager;
import fast.dic.dict.database.LocalStorage;
import fast.dic.dict.helpers.FDMainDatabaseHelper;
import fast.dic.dict.models.api.WodApiModel;
import fast.dic.dict.services.RetrofitBuilder;
import fast.dic.dict.utils.DateExtKt;
import fast.dic.dict.utils.FDLanguageWord;
import fast.dic.dict.utils.IntExtKt;
import fast.dic.dict.utils.LocaleExtKt;
import fast.dic.dict.utils.Logger;
import fast.dic.dict.utils.LoggerKt;
import fast.dic.dict.utils.StringExtKt;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Date;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: compiled from: WordOfTheDayWidget.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0015\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J.\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\u001c\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\r2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\u0012\u0010\u0019\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0016J\u0012\u0010\u001a\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0016J\u001c\u0010\u001b\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\r2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J&\u0010\u001e\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\r2\b\u0010\u001f\u001a\u0004\u0018\u00010\u001d2\b\u0010 \u001a\u0004\u0018\u00010\u001dH\u0016J \u0010!\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J*\u0010\"\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\r2\b\u0010#\u001a\u0004\u0018\u00010\u0018H\u0017b\f\b$\u0012\b\b%\u0012\u0004\b\u0003\u0010>J6\u0010&\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\n\b\u0002\u0010'\u001a\u0004\u0018\u00010(2\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082.¢\u0006\u0002\n\u0000¨\u0006)"}, d2 = {"Lfast/dic/dict/WordOfTheDayWidget;", "Landroid/appwidget/AppWidgetProvider;", "<init>", "()V", "widgetSize", "Lfast/dic/dict/WidgetEnumSize;", "localStorage", "Lfast/dic/dict/database/LocalStorage;", "databaseHelper", "Lfast/dic/dict/database/FDDatabaseManager;", "onAppWidgetOptionsChanged", "", Names.CONTEXT, "Landroid/content/Context;", "appWidgetManager", "Landroid/appwidget/AppWidgetManager;", "appWidgetId", "", "newOptions", "Landroid/os/Bundle;", "peekService", "Landroid/os/IBinder;", "myContext", NotificationCompat.CATEGORY_SERVICE, "Landroid/content/Intent;", "onDisabled", "onEnabled", "onDeleted", "appWidgetIds", "", "onRestored", "oldWidgetIds", "newWidgetIds", "onUpdate", "onReceive", "intent", "Landroidx/annotation/RequiresApi;", "value", "updateAppWidget", "todayWod", "Lfast/dic/dict/models/api/WodApiModel;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class WordOfTheDayWidget extends AppWidgetProvider {
    private FDDatabaseManager databaseHelper;
    private LocalStorage localStorage;
    private WidgetEnumSize widgetSize;

    @Override // android.appwidget.AppWidgetProvider
    public void onAppWidgetOptionsChanged(Context context, AppWidgetManager appWidgetManager, int appWidgetId, Bundle newOptions) {
        super.onAppWidgetOptionsChanged(context, appWidgetManager, appWidgetId, newOptions);
        LoggerKt.getLogger().debug("----------------> widget onAppWidgetOptionsChanged called", new Object[0]);
    }

    @Override // android.content.BroadcastReceiver
    public IBinder peekService(Context myContext, Intent service) {
        LoggerKt.getLogger().debug("----------------> widget peekService called", new Object[0]);
        IBinder iBinderPeekService = super.peekService(myContext, service);
        Intrinsics.checkNotNullExpressionValue(iBinderPeekService, "peekService(...)");
        return iBinderPeekService;
    }

    @Override // android.appwidget.AppWidgetProvider
    public void onDisabled(Context context) {
        super.onDisabled(context);
        LoggerKt.getLogger().debug("----------------> widget onDisabled called", new Object[0]);
    }

    @Override // android.appwidget.AppWidgetProvider
    public void onEnabled(Context context) {
        super.onEnabled(context);
        LoggerKt.getLogger().debug("----------------> widget onEnabled called", new Object[0]);
    }

    @Override // android.appwidget.AppWidgetProvider
    public void onDeleted(Context context, int[] appWidgetIds) {
        super.onDeleted(context, appWidgetIds);
        LoggerKt.getLogger().debug("----------------> widget onDeleted called", new Object[0]);
    }

    @Override // android.appwidget.AppWidgetProvider
    public void onRestored(Context context, int[] oldWidgetIds, int[] newWidgetIds) {
        super.onRestored(context, oldWidgetIds, newWidgetIds);
        LoggerKt.getLogger().debug("----------------> widget onRestored called", new Object[0]);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v6, types: [T, fast.dic.dict.models.api.WodApiModel] */
    @Override // android.appwidget.AppWidgetProvider
    public void onUpdate(final Context context, final AppWidgetManager appWidgetManager, final int[] appWidgetIds) {
        String date;
        WordOfTheDayWidget wordOfTheDayWidget = this;
        Context context2 = context;
        Intrinsics.checkNotNullParameter(context2, "context");
        AppWidgetManager appWidgetManager2 = appWidgetManager;
        Intrinsics.checkNotNullParameter(appWidgetManager2, "appWidgetManager");
        Intrinsics.checkNotNullParameter(appWidgetIds, "appWidgetIds");
        if (wordOfTheDayWidget.localStorage == null) {
            wordOfTheDayWidget.localStorage = new LocalStorage(context2);
            wordOfTheDayWidget.databaseHelper = new FDDatabaseManager(new FDMainDatabaseHelper(Logger.INSTANCE.getLogger1(), context2), context2);
        }
        LoggerKt.getLogger().debug("----------------> widget onUpdate called. appWidgetIds = " + ArraysKt.joinToString$default(appWidgetIds, (CharSequence) StringUtils.COMMA, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62, (Object) null), new Object[0]);
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        LocalStorage localStorage = wordOfTheDayWidget.localStorage;
        Date dateIsoStringToDate = null;
        if (localStorage == null) {
            Intrinsics.throwUninitializedPropertyAccessException("localStorage");
            localStorage = null;
        }
        objectRef.element = localStorage.getWod();
        WodApiModel wodApiModel = (WodApiModel) objectRef.element;
        if (wodApiModel != null && (date = wodApiModel.getDate()) != null) {
            dateIsoStringToDate = StringExtKt.isoStringToDate(date);
        }
        if (objectRef.element == 0 || (dateIsoStringToDate != null && !DateExtKt.isToday(dateIsoStringToDate))) {
            int length = appWidgetIds.length;
            int i = 0;
            while (i < length) {
                wordOfTheDayWidget.updateAppWidget(context2, appWidgetManager, appWidgetIds[i], new WodApiModel(null, context2.getString(R.string.loading_data), null, 5, null), wordOfTheDayWidget.widgetSize);
                i++;
                wordOfTheDayWidget = this;
                context2 = context;
            }
            Call<WodApiModel> callWodSync = RetrofitBuilder.INSTANCE.getApiService().wodSync();
            if (callWodSync != null) {
                callWodSync.enqueue(new Callback<WodApiModel>() { // from class: fast.dic.dict.WordOfTheDayWidget.onUpdate.1
                    /* JADX WARN: Type inference failed for: r9v1, types: [T, java.lang.Object] */
                    @Override // retrofit2.Callback
                    public void onResponse(Call<WodApiModel> call, Response<WodApiModel> response) {
                        Intrinsics.checkNotNullParameter(call, "call");
                        Intrinsics.checkNotNullParameter(response, "response");
                        LoggerKt.getLogger().error("----------------> widget onUpdate - onResponse called", new Object[0]);
                        if (response.body() != null) {
                            objectRef.element = response.body();
                            WodApiModel wodApiModel2 = objectRef.element;
                            if (wodApiModel2 != null) {
                                LocalStorage localStorage2 = this.localStorage;
                                if (localStorage2 == null) {
                                    Intrinsics.throwUninitializedPropertyAccessException("localStorage");
                                    localStorage2 = null;
                                }
                                localStorage2.storeWod(wodApiModel2);
                            }
                            for (int i2 : appWidgetIds) {
                                this.updateAppWidget(context, appWidgetManager, i2, objectRef.element, this.widgetSize);
                            }
                        }
                    }

                    @Override // retrofit2.Callback
                    public void onFailure(Call<WodApiModel> call, Throwable t) {
                        Intrinsics.checkNotNullParameter(call, "call");
                        Intrinsics.checkNotNullParameter(t, "t");
                        LoggerKt.getLogger().error("----------------> widget onUpdate - onFailure called + " + t.getMessage(), new Object[0]);
                        for (int i2 : appWidgetIds) {
                            this.updateAppWidget(context, appWidgetManager, i2, objectRef.element, this.widgetSize);
                        }
                    }
                });
                return;
            }
            return;
        }
        int length2 = appWidgetIds.length;
        int i2 = 0;
        while (i2 < length2) {
            wordOfTheDayWidget.updateAppWidget(context2, appWidgetManager2, appWidgetIds[i2], (WodApiModel) objectRef.element, wordOfTheDayWidget.widgetSize);
            i2++;
            appWidgetManager2 = appWidgetManager;
        }
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0038  */
    @Override // android.appwidget.AppWidgetProvider, android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        ArrayList<Integer> integerArrayList;
        WidgetEnumSize widgetEnumSize;
        WidgetEnumSize widgetEnumSize2;
        Resources resources;
        DisplayMetrics displayMetrics;
        Bundle extras;
        Bundle extras2;
        Bundle extras3;
        super.onReceive(context, intent);
        int i = (intent == null || (extras3 = intent.getExtras()) == null) ? -1 : extras3.getInt("appWidgetId");
        Bundle bundle = (intent == null || (extras2 = intent.getExtras()) == null) ? null : extras2.getBundle("appWidgetOptions");
        if (bundle != null) {
            try {
                if (bundle.containsKey("appWidgetSizes")) {
                    integerArrayList = bundle.getIntegerArrayList("appWidgetSizes");
                } else {
                    integerArrayList = null;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {
            integerArrayList = null;
        }
        Bundle bundle2 = (intent == null || (extras = intent.getExtras()) == null) ? null : extras.getBundle("appWidgetOptions");
        Integer numValueOf = bundle2 != null ? Integer.valueOf(bundle2.getInt("appWidgetMaxWidth")) : null;
        Integer numValueOf2 = bundle2 != null ? Integer.valueOf(bundle2.getInt("appWidgetMaxHeight")) : null;
        Integer numValueOf3 = bundle2 != null ? Integer.valueOf(bundle2.getInt("appWidgetMinWidth")) : null;
        Integer numValueOf4 = bundle2 != null ? Integer.valueOf(bundle2.getInt("appWidgetMinHeight")) : null;
        int i2 = ((context == null || (resources = context.getResources()) == null || (displayMetrics = resources.getDisplayMetrics()) == null) ? 160 : displayMetrics.densityDpi) >= 480 ? 2 : 3;
        Intrinsics.checkNotNull(context);
        int dimensionUnit$default = IntExtKt.toDimensionUnit$default(30.0f, context, 0, 2, null);
        int i3 = dimensionUnit$default * i2;
        LoggerKt.getLogger().debug("----------------> widget onReceive cellCount = " + i2 + " ---- appWidgetSizes = " + integerArrayList + " called. appWidgetMaxWidth = " + numValueOf + ", appWidgetMaxHeight = " + numValueOf2 + ", appWidgetMinWidth = " + numValueOf3 + ", appWidgetMinHeight = " + numValueOf4 + ", size = " + i3 + ", appWidgetId = " + i, new Object[0]);
        if (integerArrayList != null) {
            try {
                Object obj = integerArrayList.get(1);
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type android.util.SizeF");
                SizeF sizeF = (SizeF) obj;
                if (sizeF.getWidth() < i3) {
                    widgetEnumSize = WidgetEnumSize.SMALL;
                } else if (sizeF.getWidth() < i3 + dimensionUnit$default) {
                    widgetEnumSize = WidgetEnumSize.MEDIUM;
                } else {
                    widgetEnumSize = WidgetEnumSize.LARGE;
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                widgetEnumSize = WidgetEnumSize.MEDIUM;
            }
            this.widgetSize = widgetEnumSize;
        } else if (numValueOf != null) {
            int iIntValue = numValueOf.intValue();
            if (iIntValue < i3) {
                widgetEnumSize2 = WidgetEnumSize.SMALL;
            } else if (iIntValue < i3 + dimensionUnit$default) {
                widgetEnumSize2 = WidgetEnumSize.MEDIUM;
            } else {
                widgetEnumSize2 = WidgetEnumSize.LARGE;
            }
            this.widgetSize = widgetEnumSize2;
        }
        AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(context);
        Intrinsics.checkNotNullExpressionValue(appWidgetManager, "getInstance(...)");
        onUpdate(context, appWidgetManager, new int[]{i});
    }

    public static /* synthetic */ void updateAppWidget$default(WordOfTheDayWidget wordOfTheDayWidget, Context context, AppWidgetManager appWidgetManager, int i, WodApiModel wodApiModel, WidgetEnumSize widgetEnumSize, int i2, Object obj) {
        if ((i2 & 8) != 0) {
            wodApiModel = null;
        }
        if ((i2 & 16) != 0) {
            widgetEnumSize = null;
        }
        wordOfTheDayWidget.updateAppWidget(context, appWidgetManager, i, wodApiModel, widgetEnumSize);
    }

    public final void updateAppWidget(Context context, AppWidgetManager appWidgetManager, int appWidgetId, WodApiModel todayWod, WidgetEnumSize widgetSize) {
        String string;
        String dateJalali;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(appWidgetManager, "appWidgetManager");
        FDDatabaseManager fDDatabaseManager = null;
        LoggerKt.getLogger().debug("----------------> updateAppWidget called. todayWod?.word  = " + (todayWod != null ? todayWod.getWord() : null) + " . todayString = " + new Date() + " . appWidgetId = " + appWidgetId, new Object[0]);
        LocalStorage localStorage = this.localStorage;
        if (localStorage == null) {
            Intrinsics.throwUninitializedPropertyAccessException("localStorage");
            localStorage = null;
        }
        boolean zCurrentLanguageIsPersian = localStorage.currentLanguageIsPersian();
        LocalStorage localStorage2 = this.localStorage;
        if (localStorage2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("localStorage");
            localStorage2 = null;
        }
        LocaleExtKt.updateCurrentLanguage(localStorage2.getCurrentLanguage(), context);
        String string$default = DateExtKt.toString$default(new Date(), "yyyy-MM-dd", null, 2, null);
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), R.layout.word_of_the_day_widget);
        if (zCurrentLanguageIsPersian) {
            if (todayWod != null && (dateJalali = todayWod.getDateJalali()) != null) {
                string$default = dateJalali;
            }
            remoteViews.setTextViewTextSize(R.id.today_view, 1, 12.0f);
            remoteViews.setTextViewTextSize(R.id.wod_title_view, 1, 12.0f);
        } else {
            remoteViews.setTextViewTextSize(R.id.today_view, 1, 9.0f);
            remoteViews.setTextViewTextSize(R.id.wod_title_view, 1, 9.0f);
        }
        if (todayWod == null || (string = todayWod.getWord()) == null) {
            string = context.getString(R.string.app_full_name);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        }
        FDDatabaseManager fDDatabaseManager2 = this.databaseHelper;
        if (fDDatabaseManager2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("databaseHelper");
        } else {
            fDDatabaseManager = fDDatabaseManager2;
        }
        String meaningByWord = fDDatabaseManager.getMeaningByWord(string, FDLanguageWord.INSTANCE.find(string));
        String str = string$default;
        remoteViews.setTextViewText(R.id.today_view, str);
        remoteViews.setTextViewText(R.id.today_view_center, str);
        remoteViews.setTextViewText(R.id.wod_title_view, context.getString(R.string.word_of_the_day));
        remoteViews.setTextViewText(R.id.wod_word_view, string);
        remoteViews.setTextViewText(R.id.wod_meanings_view, meaningByWord);
        Intent intent = new Intent(context, (Class<?>) SplashActivity.class);
        Uri uri = Uri.parse("fdword://word/" + string);
        Intrinsics.checkNotNullExpressionValue(uri, "parse(...)");
        intent.setData(uri);
        intent.setFlags(268468224);
        PendingIntent activity = PendingIntent.getActivity(context, 0, intent, 201326592);
        remoteViews.setOnClickPendingIntent(R.id.wod_container, activity);
        remoteViews.setPendingIntentTemplate(R.id.wod_word_view, activity);
        if (widgetSize == WidgetEnumSize.SMALL) {
            remoteViews.setViewVisibility(R.id.today_view, 8);
            remoteViews.setViewVisibility(R.id.wod_title_view, 8);
            remoteViews.setViewVisibility(R.id.wod_meanings_view, 8);
            remoteViews.setViewVisibility(R.id.calendar_icon_view, 8);
            remoteViews.setViewVisibility(R.id.today_view_center, 0);
            remoteViews.setInt(R.id.wod_word_view, "setMaxLines", 1);
        } else {
            remoteViews.setViewVisibility(R.id.today_view, 0);
            remoteViews.setViewVisibility(R.id.today_view_center, 8);
            remoteViews.setViewVisibility(R.id.wod_title_view, 0);
            remoteViews.setViewVisibility(R.id.wod_meanings_view, 0);
            remoteViews.setViewVisibility(R.id.calendar_icon_view, 0);
            remoteViews.setInt(R.id.wod_word_view, "setMaxLines", Integer.MAX_VALUE);
        }
        boolean z = (context.getResources().getConfiguration().uiMode & 48) == 32;
        if (Build.VERSION.SDK_INT < 31) {
            remoteViews.setInt(R.id.wod_header_container, "setBackgroundResource", R.drawable.top_curve_wod);
            remoteViews.setInt(R.id.wod_word_container, "setBackgroundResource", R.drawable.bottom_curve_wod);
        } else if (z) {
            remoteViews.setInt(R.id.wod_header_container, "setBackgroundResource", R.color.fdGrey2Dark);
            remoteViews.setInt(R.id.wod_word_container, "setBackgroundResource", R.color.fdGrey2Dark80);
        } else {
            remoteViews.setInt(R.id.wod_header_container, "setBackgroundResource", R.color.fdBlack);
            remoteViews.setInt(R.id.wod_word_container, "setBackgroundResource", R.color.fdBlack80);
        }
        remoteViews.setInt(R.id.wod_container, "setBackgroundResource", R.drawable.curve_transparent_background);
        appWidgetManager.updateAppWidget(appWidgetId, remoteViews);
    }
}
