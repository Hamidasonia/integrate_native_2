import 'package:flutter/material.dart';
import 'package:integrate_native_2/common/constans.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  void initState() {
    super.initState();
    _scaffoldKey = new GlobalKey<ScaffoldState>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(title: Text("Second Page")),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Center(
      child: Text("Hello world"),
    );
  }
}
