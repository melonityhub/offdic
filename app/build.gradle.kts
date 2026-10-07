plugins { id("com.android.application"); id("org.jetbrains.kotlin.android") }

// The release workflow passes -PappVersionName/-PappVersionCode; a local build keeps the defaults.
val appVersionName = providers.gradleProperty("appVersionName").getOrElse("0.1.0")
val appVersionCode = providers.gradleProperty("appVersionCode").getOrElse("1").toInt()
// -PabiSplits=true (release workflow only) emits one APK per ABI next to the universal one.
val abiSplits = providers.gradleProperty("abiSplits").getOrElse("false").toBoolean()

android {
    namespace = "org.offdic"
    compileSdk = 35
    defaultConfig {
        applicationId = "org.offdic"
        minSdk = 26
        targetSdk = 35
        versionCode = appVersionCode
        versionName = appVersionName
    }
    // A real release key can be supplied through repository secrets (OFFDIC_KEYSTORE_FILE,
    // OFFDIC_KEYSTORE_PASSWORD, OFFDIC_KEY_ALIAS, OFFDIC_KEY_PASSWORD). While none is configured the
    // release build is signed with the debug key: installable, but not a Play Store or long-term
    // update key. See docs/RELEASE_FA.md.
    signingConfigs {
        val storePath = System.getenv("OFFDIC_KEYSTORE_FILE")
        if (!storePath.isNullOrBlank()) {
            create("release") {
                storeFile = file(storePath)
                storePassword = System.getenv("OFFDIC_KEYSTORE_PASSWORD")
                keyAlias = System.getenv("OFFDIC_KEY_ALIAS")
                keyPassword = System.getenv("OFFDIC_KEY_PASSWORD")
            }
        }
    }
    buildTypes {
        release {
            isMinifyEnabled = false
            signingConfig = signingConfigs.findByName("release") ?: signingConfigs.getByName("debug")
        }
    }
    if (abiSplits) {
        splits {
            abi {
                isEnable = true
                reset()
                include("arm64-v8a", "armeabi-v7a", "x86_64")
                isUniversalApk = true
            }
        }
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
