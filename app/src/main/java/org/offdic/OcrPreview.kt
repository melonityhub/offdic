package org.offdic

import android.content.Context
import android.graphics.*
import android.view.MotionEvent
import android.view.ScaleGestureDetector
import android.view.View
import com.google.mlkit.vision.text.Text

/** Bounded photo preview with text-block selection and pinch zoom, without uploading the photo. */
class OcrPreview(context: Context, private val onBlock: (String) -> Unit) : View(context) {
    private var bitmap: Bitmap? = null
    private var blocks: List<Pair<Rect, String>> = emptyList()
    private val transform = Matrix()
    private val paint = Paint(Paint.ANTI_ALIAS_FLAG)
    private var zoom = 1f
    private var panX = 0f
    private var panY = 0f
    private var startX = 0f
    private var startY = 0f
    private var lastX = 0f
    private var lastY = 0f
    private var moved = false
    private val scaleDetector = ScaleGestureDetector(context, object : ScaleGestureDetector.SimpleOnScaleGestureListener() {
        override fun onScale(detector: ScaleGestureDetector): Boolean {
            zoom = (zoom * detector.scaleFactor).coerceIn(1f, 4f); moved = true; invalidate(); return true
        }
    })
    init { contentDescription = "پیش‌نمایش OCR؛ برای انتخاب متن روی کادر بزنید. بزرگ‌نمایی با دو انگشت."; isClickable = true }
    fun show(image: Bitmap, result: Text) {
        bitmap = image
        blocks = result.textBlocks.mapNotNull { block -> block.boundingBox?.let { Rect(it) to block.text } }
        zoom = 1f; panX = 0f; panY = 0f; visibility = VISIBLE; invalidate()
    }
    override fun onDraw(canvas: Canvas) {
        super.onDraw(canvas)
        val image = bitmap ?: return
        canvas.drawColor(0xff05131e.toInt())
        val fit = minOf(width.toFloat() / image.width, height.toFloat() / image.height)
        val scale = fit * zoom
        val scaledWidth = image.width * scale
        val scaledHeight = image.height * scale
        val maxX = maxOf(0f, (scaledWidth - width) / 2f)
        val maxY = maxOf(0f, (scaledHeight - height) / 2f)
        panX = panX.coerceIn(-maxX, maxX); panY = panY.coerceIn(-maxY, maxY)
        transform.setScale(scale, scale)
        transform.postTranslate((width - scaledWidth) / 2f + panX, (height - scaledHeight) / 2f + panY)
        canvas.save(); canvas.concat(transform)
        paint.style = Paint.Style.FILL
        canvas.drawBitmap(image, 0f, 0f, paint)
        paint.style = Paint.Style.STROKE; paint.color = 0xfff4d239.toInt(); paint.strokeWidth = 2f * resources.displayMetrics.density / scale
        blocks.forEach { canvas.drawRect(it.first, paint) }
        canvas.restore()
    }
    override fun onTouchEvent(event: MotionEvent): Boolean {
        scaleDetector.onTouchEvent(event)
        when (event.actionMasked) {
            MotionEvent.ACTION_DOWN -> {
                startX = event.x; startY = event.y; lastX = event.x; lastY = event.y; moved = false
                parent?.requestDisallowInterceptTouchEvent(true)
            }
            MotionEvent.ACTION_MOVE -> {
                if (!scaleDetector.isInProgress && event.pointerCount == 1) {
                    panX += event.x - lastX; panY += event.y - lastY
                    if (kotlin.math.abs(event.x - startX) + kotlin.math.abs(event.y - startY) > 16f * resources.displayMetrics.density) moved = true
                    invalidate()
                }
                lastX = event.x; lastY = event.y
            }
            MotionEvent.ACTION_UP -> {
                if (!moved) {
                    val inverse = Matrix()
                    if (transform.invert(inverse)) {
                        val point = floatArrayOf(event.x, event.y); inverse.mapPoints(point)
                        blocks.firstOrNull { it.first.contains(point[0].toInt(), point[1].toInt()) }?.let { onBlock(it.second) }
                    }
                    performClick()
                }
                parent?.requestDisallowInterceptTouchEvent(false)
            }
            MotionEvent.ACTION_CANCEL -> parent?.requestDisallowInterceptTouchEvent(false)
        }
        return true
    }
    override fun performClick(): Boolean { super.performClick(); return true }
}
