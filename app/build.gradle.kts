plugins { id("com.android.application"); id("org.jetbrains.kotlin.android") }
android {
    namespace = "org.offdic"
    compileSdk = 35
    defaultConfig {
        applicationId = "org.offdic"
        minSdk = 26
        targetSdk = 35
        versionCode = 1
        versionName = "0.1.0"
    }
    compileOptions { sourceCompatibility = JavaVersion.VERSION_17; targetCompatibility = JavaVersion.VERSION_17 }
    kotlinOptions { jvmTarget = "17" }
    sourceSets["main"].assets.srcDir(layout.buildDirectory.dir("generated/sampleAssets"))
}
// Bundle the small sample only when a full database has not been supplied.
val prepareDatabase by tasks.registering(Sync::class) {
    from(rootProject.file("dbsample/sample.sqlite")) {
        into("databases")
        rename { "sample.sqlite" }
        exclude { project.file("src/main/assets/databases/fastdic_plain.sqlite").exists() }
    }
    into(layout.buildDirectory.dir("generated/sampleAssets"))
}
tasks.named("preBuild").configure { dependsOn(prepareDatabase) }

android.defaultConfig.testInstrumentationRunner = "androidx.test.runner.AndroidJUnitRunner"
dependencies {
    implementation("androidx.webkit:webkit:1.12.1")
    implementation("androidx.core:core-ktx:1.15.0")
    implementation("androidx.exifinterface:exifinterface:1.3.7")
    implementation("androidx.work:work-runtime-ktx:2.10.0")
    implementation("com.google.mlkit:text-recognition:16.0.1")
    implementation("com.google.mlkit:translate:17.0.3")
    androidTestImplementation("androidx.test:core:1.6.1")
    androidTestImplementation("androidx.test.ext:junit:1.2.1")
    androidTestImplementation("androidx.test:runner:1.6.2")
}
