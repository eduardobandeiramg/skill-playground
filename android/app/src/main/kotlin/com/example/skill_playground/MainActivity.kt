package com.example.skill_playground
import android.os.Build
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity: FlutterActivity() {
    private val CHANNEL = "skill_playground/retorna_so"

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler {
                call, result ->
            if (call.method == "retornaSO") {
                result.success("Android ${Build.VERSION.RELEASE}")
            } else {
                result.notImplemented()
            }
        }
    }
}


/*
class MainActivity : FlutterActivity() {
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(
            flutterEngine.dartExecutor.binaryMessenger,
            "skill_playground/retorna_so"
        ).setMethodCallHandler { call, result -> }
    }

    private fun retornaSO() : String{
        val sistemaOperacional : String
    }
}*/
