// Root build script. Plugins are declared here with their versions and applied in :app.
// Versions are pinned so the wrapper (Gradle 8.14.5) resolves a known-good toolchain:
// AGP 8.7.x supports compileSdk 35 and requires Gradle 8.9+; Kotlin 2.0.21 is the matching
// Kotlin Gradle plugin. Do not bump one without checking the others.
plugins {
    id("com.android.application") version "8.7.3" apply false
    id("org.jetbrains.kotlin.android") version "2.0.21" apply false
}
