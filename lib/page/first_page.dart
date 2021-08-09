import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:integrate_native_2/common/configs/native_sdk.dart';
import 'package:integrate_native_2/dialog/exit_dialog.dart';
import 'package:integrate_native_2/model/app/singleton_model.dart';
import 'package:integrate_native_2/tool/helper.dart';
import 'package:integrate_native_2/tool/native_manager.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  GlobalKey<ScaffoldState> _scaffoldKey;
  SingletonModel _model;
  Helper _helper;
  String _text;

  String _brandSmartphone = 'data hape  tidak diketahui';

  @override
  void initState() {
    super.initState();
    _scaffoldKey = new GlobalKey<ScaffoldState>();
    _model = SingletonModel.shared;
    _helper = new Helper();
    _createHelloWorld();
  }

  void _createHelloWorld() async{
    NativeManager.createHelloWorld().then((res){
      setState(() {
        _text = "$res";
      });
    }).catchError((e){
      setState(() {
        _text = "\nError : $e";
      });
    });
  }

  Future<bool> _onWillPop() async {
    return await openExitDialog(context) ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(title: Text("First Page")),
        body: _buildBody(),
      ),
      onWillPop: _onWillPop,
    );
  }

  Widget _buildBody() {
    return Center(
      child: Column(
        children: [
          Text("${_text ?? 'Loading'}"),
        ],
      ),
    );
  }
}
