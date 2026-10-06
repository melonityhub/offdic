package fast.dic.dict.utils;

import android.content.Context;
import android.net.Uri;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import androidx.core.content.FileProvider;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.request.RequestOptions;
import com.taurusx.tax.f.n;
import com.taurusx.tax.s.g;
import com.yandex.div.core.dagger.Names;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ImageViewExtension.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\"\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\f\b\u0001\u0010\u0003\u001a\u00020\u0004:\u0002\b\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u001a\u0014\u0010\b\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\n\u001a\u001c\u0010\u000b\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u001a\u0016\u0010\u000e\u001a\u0004\u0018\u00010\r*\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u0011¨\u0006\u0012"}, d2 = {"setDrawableImage", "", "Landroid/widget/ImageView;", n.g, "", "Landroidx/annotation/DrawableRes;", "applyCircle", "", "rotateImageView", "duration", "", "setLocalImage", g.y, "Landroid/net/Uri;", "getSavedFileProviderUri", "Ljava/io/File;", Names.CONTEXT, "Landroid/content/Context;", "app"}, k = 2, mv = {2, 4, 0}, xi = 48)
public final class ImageViewExtensionKt {
    public static /* synthetic */ void setDrawableImage$default(ImageView imageView, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        setDrawableImage(imageView, i, z);
    }

    public static final void setDrawableImage(ImageView imageView, int i, boolean z) {
        Intrinsics.checkNotNullParameter(imageView, "<this>");
        RequestBuilder requestBuilderDiskCacheStrategy = Glide.with(imageView).load(Integer.valueOf(i)).diskCacheStrategy(DiskCacheStrategy.NONE);
        Intrinsics.checkNotNullExpressionValue(requestBuilderDiskCacheStrategy, "diskCacheStrategy(...)");
        RequestBuilder requestBuilder = requestBuilderDiskCacheStrategy;
        if (z) {
            requestBuilder.apply((BaseRequestOptions<?>) RequestOptions.circleCropTransform()).into(imageView);
        } else {
            requestBuilder.into(imageView);
        }
    }

    public static /* synthetic */ void rotateImageView$default(ImageView imageView, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            j = 1000;
        }
        rotateImageView(imageView, j);
    }

    public static final void rotateImageView(ImageView imageView, long j) {
        Intrinsics.checkNotNullParameter(imageView, "<this>");
        RotateAnimation rotateAnimation = new RotateAnimation(0.0f, 360.0f, 1, 0.5f, 1, 0.5f);
        rotateAnimation.setDuration(j);
        rotateAnimation.setRepeatCount(-1);
        imageView.startAnimation(rotateAnimation);
    }

    public static /* synthetic */ void setLocalImage$default(ImageView imageView, Uri uri, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        setLocalImage(imageView, uri, z);
    }

    public static final void setLocalImage(ImageView imageView, Uri uri, boolean z) {
        Intrinsics.checkNotNullParameter(imageView, "<this>");
        Intrinsics.checkNotNullParameter(uri, "uri");
        RequestBuilder requestBuilderDiskCacheStrategy = Glide.with(imageView).load(uri).diskCacheStrategy(DiskCacheStrategy.NONE);
        Intrinsics.checkNotNullExpressionValue(requestBuilderDiskCacheStrategy, "diskCacheStrategy(...)");
        RequestBuilder requestBuilder = requestBuilderDiskCacheStrategy;
        if (z) {
            requestBuilder.apply((BaseRequestOptions<?>) RequestOptions.circleCropTransform()).into(imageView);
        } else {
            requestBuilder.into(imageView);
        }
    }

    public static final Uri getSavedFileProviderUri(File file, Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (file == null) {
            return null;
        }
        return FileProvider.getUriForFile(context, context.getApplicationContext().getPackageName() + ".provider", file);
    }
}
