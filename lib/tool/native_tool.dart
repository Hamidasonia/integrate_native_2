import 'dart:async';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:integrate_native_2/common/configs/error.dart';
import 'package:integrate_native_2/common/configs/native_sdk.dart';

class NativeTool{
  static Future request(String method, {Map<String, dynamic> param}) async{
    try{
      return await NativeSdk.platform.invokeMethod(method, param);
    } on TimeoutException catch (e) {
      print(e);
      return Future.error(kERTO);
    } on SocketException catch (e) {
      print(e);
      return Future.error(kEKoneksi);
    } on PlatformException catch(e){
      print(e);
      return Future.error(e);
    }
  }

}