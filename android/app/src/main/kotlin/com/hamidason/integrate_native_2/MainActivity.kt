package com.hamidason.integrate_native_2

import id.nesd.apalahsdk.ApalahSDK
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity: FlutterActivity() {
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, "com.hamidason.integrate_native_2/native_sdk").setMethodCallHandler { call, result ->
            if (call.method == "createHelloWorld") {
                ApalahSDK.openCalculator(this.context)
                result.success("")
            }
        }
    }
}