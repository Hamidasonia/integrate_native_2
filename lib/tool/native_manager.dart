import 'package:flutter/cupertino.dart';
import 'package:integrate_native_2/common/configs/native_sdk.dart';
import 'package:integrate_native_2/tool/native_tool.dart';

class NativeManager {
  static Future createHelloWorld() async {
    return await NativeTool.request(NativeSdk.method.createHelloWorld);
  }
}
