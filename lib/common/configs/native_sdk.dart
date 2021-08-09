import 'package:flutter/services.dart';
import 'package:integrate_native_2/common/constans.dart';

class NativeSdk{
  static const String channel = "$kGPackageName/native_sdk";
  static const MethodChannel platform = const MethodChannel(NativeSdk.channel);

  static _Method method = const _Method();
}

class _Method{
  const _Method();

  String get createHelloWorld => "createHelloWorld";
}